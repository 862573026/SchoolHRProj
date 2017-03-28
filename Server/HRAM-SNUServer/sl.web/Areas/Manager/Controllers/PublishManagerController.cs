﻿using System;
using System.Collections.Generic;
using System.Web.Mvc;
using System.Web;
using sl.IService;
using sl.model;
using sl.common;
using sl.web.ui;
using sl.validate;
using Newtonsoft.Json;
using System.IO;
using System.Text;
using System.Data;
using PetaPoco;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using NPOI.HSSF.UserModel;
using sl.service.manager;
using sl.extension;
using common.utils;

namespace sl.web.Areas.Manager.Controllers
{
    /// <summary>
    /// 发布管理的Controller
    /// </summary>
    public class PublishManagerController : BaseManagerController
    {
        private string pmAD_HEAD = "PMAD_";

        //
        // GET: /Manager/PublishManager/
        public ActionResult PublishManagerView()
        {
            return View();
        }

        #region 查询发布信息
        public ActionResult GetPublishsList(string uLoginName = "")
        {
            Sql sql = HRAManagerService.GetPublishSql(uLoginName);

            return CommonPageList<dynamic>(sql, HRAManagerService.database);
        }
        #endregion

        #region 删除发布信息
        public ActionResult PublishDel(string model)
        {
            List<T_PublishManage> publishsList = JsonConvert.DeserializeObject<List<T_PublishManage>>(model);
            int flag = 0;
            foreach (var entity in publishsList)
            {
                entity.isDeleted = true;
                //搜索相关联的发布广告图片列表 
                Sql sql = Sql.Builder;
                sql.Append("Update T_ADImgList set isDeleted = 1 where pmADImgListID = @0", entity.pmADImgListID);
                HRAManagerService.database.Execute(sql);

                flag = HRAManagerService.database.Update(entity);
            }
            return DelMessage(flag);
        }
        #endregion

        #region 编辑发布信息
        [ValidateInput(false)]
        public ActionResult PublishEdit(T_PublishManage m, string id = "0")
        {
            if (id == "0")
            {
                if (Request.IsPost())
                {
                    var validate = Model.Valid(m);
                    if (validate.Result)
                    {
                        m.pmADImgListID = pmAD_HEAD + Utils.GetRamCode();
                        m.pmViews = 0; //初始化浏览次数
                        m.isDeleted = false;
                        object result = HRAManagerService.database.Insert(m);
                        return SaveMessage(result);
                    }
                    else
                    {
                        return Json(new JsonTip("0", validate.Message));
                    }
                }
                return View(m);
            }
            else
            {
                Object obj = id;
                T_PublishManage load = HRAManagerService.database.SingleOrDefault<T_PublishManage>(obj);
                if (load == null)
                {
                    return Json(new JsonTip("0", "找不到该实体"));
                }

                if (Request.IsPost())
                {
                    if (TryUpdateModel(load))
                    {
                        int success = HRAManagerService.database.Update(load);
                        return SaveMessage(success);
                    }
                }
                return View("PublishEdit", load);
            }
        }
        #endregion

        #region 广告图片
        public ActionResult PMAdView()
        {
            return View();
        }


        #region 获取广告图片
        public ActionResult GetJsonPMAdImgs(T_ADImgList m, string aid = "0")
        {
            Sql sql = Sql.Builder;
            sql.Append("Select T_PublishManage.pmTitle,T_ADImgList.pkId,T_ADImgList.pmADImgListURL,T_ADImgList.pmADImgListNum");
            sql.Append(" from T_ADImgList,T_PublishManage ");
            sql.Append(" where T_ADImgList.pmADImgListID =  T_PublishManage.pmADImgListID");
            sql.Append(" and  T_ADImgList.pmADImgListID= @0  and T_ADImgList.isDeleted = 0 ", aid);
            //sql.Append(" Order by T_ADImgList.pmADImgListNum asc"); 排序出现错误
            return CommonPageList<dynamic>(sql, HRAManagerService.database);
        }
        #endregion

        #region 删除广告图片条目
        public ActionResult PMAdDel(string model)
        {
            List<T_ADImgList> publishsList = JsonConvert.DeserializeObject<List<T_ADImgList>>(model);
            int flag = 0;
            foreach (var entity in publishsList)
            {
                entity.isDeleted = true; //可以考虑直接删除
                flag = HRAManagerService.database.Update(entity);
            }
            return DelMessage(flag);
        }
        #endregion

        #region 编辑广告图片
        [ValidateInput(false)]
        public ActionResult PMAdEdit(T_ADImgList m, string aid = "0", string id = "0")
        {
            if (id == "0")
            {
                if (Request.IsPost())
                {
                    var validate = Model.Valid(m);
                    if (validate.Result)
                    {
                        m.pmADImgListID = aid;
                        m.pmADImgListURL = UploadFile();
                        m.isDeleted = false;
                        object result = HRAManagerService.database.Insert(m);
                        return SaveMessage(result);
                    }
                    else
                    {
                        return Json(new JsonTip("0", validate.Message));
                    }
                }
                return View(m);
            }
            else
            {
                Object obj = id;
                T_ADImgList load = HRAManagerService.database.SingleOrDefault<T_ADImgList>(obj);
                if (load == null)
                {
                    return Json(new JsonTip("0", "找不到该实体"));
                }

                if (Request.IsPost())
                {
                    if (TryUpdateModel(load))
                    {
                        if (Request.Files.Count > 0)
                        {
                            Utils.DeleteFile(load.pmADImgListURL);
                            string fileName = UploadFile();
                            if (fileName != "")
                            {
                                load.pmADImgListURL = fileName;
                            }
                        }

                        int success = HRAManagerService.database.Update(load);
                        return SaveMessage(success);
                    }
                }
                return View("PMAdEdit", load);
            }
        }
        #endregion

        #region 上传图片
        private string UploadFile()
        {
            string fileName = "";
            if (Request.Files.Count > 0)
            {
                HttpPostedFileBase fileBase = Request.Files["pmADImgListURL"];
                if (fileBase != null && fileBase.FileName != "")
                {
                    if (!DirFile.IsExistDirectory(Key.PublishAdImgsPath))
                    {
                        DirFile.CreateDir(Key.PublishAdImgsPath);
                    }
                    fileName = Key.PublishAdImgsPath + Utils.GetRamCode() + "." + Utils.GetFileExt(fileBase.FileName);
                    fileBase.SaveAs(Server.MapPath(fileName));
                }
            }
            return fileName;
        }
        #endregion

        //应当加个更换的
        #region 删除图片
        [HttpPost]
        public ActionResult DelImg(string id = "0")
        {
            Sql sql = Sql.Builder.Append("Select * from T_ADImgList Where pkId = @0", id);
            var m = HRAManagerService.database.FirstOrDefault<T_ADImgList>(sql);
            int success = 0;
            if (m != null)
            {
                Utils.DeleteFile(m.pmADImgListURL);
                m.pmADImgListURL = string.Empty;
                success = HRAManagerService.database.Update(m);
            }
            //换成 DelMessage
            if (success == 1)
            {
                return Json(Message("删除成功"), JsonRequestBehavior.AllowGet); //删除成功
            }
            else
            {
                return Json(Message("删除失败"), JsonRequestBehavior.AllowGet); //删除失败
            }
        }
        #endregion


        #endregion

        #region 编辑发布信息
        [ValidateInput(false)]
        public ActionResult EditPublishText(T_PublishManage m, string id = "0")
        {
            Object obj = id;
            T_PublishManage load = HRAManagerService.database.SingleOrDefault<T_PublishManage>(obj);
            if (load == null)
            {
                return Json(new JsonTip("0", "找不到该实体"));
            }

            if (Request.IsPost())
            {
                if (TryUpdateModel(load))
                {
                    int success = HRAManagerService.database.Update(load);
                    return SaveMessage(success);
                }
            }
            return View("EditPublishText", load);
        }
        #endregion


        [HttpPost]
        public string post_test(string str)
        {
            return "post的字符串是：" + str;
        }  

        /// <summary>
        /// 导出选中
        /// </summary>
        [HttpPost]
        public bool ExportSelectPublishAsExcel(string model)
        {
            List<PublishInfo> publishsList = JsonConvert.DeserializeObject<List<PublishInfo>>(model);

            //List<PublishInfo> result = HRAManagerService.GetTopPublish();

            DataTable dt = DTExtensions.ToDataTable(publishsList);


            DataRow dr = dt.NewRow();
            dr[0] = "用户名";
            dr[1] = "标题";
            dr[2] = "类别";
            dr[3] = "广告ID";
            dr[4] = "发布时间";
            //dr[5] = "浏览量";
            //dr[6] = "文章内容";

            dt.Rows.InsertAt(dr, 0);
            ExportToExcel(dt);

            return true;
            //Response.Redirect("http://www.jb51.net", false);
        }



        /// <summary>
        /// 导出全部
        /// </summary>
        /// <param name="m"></param>
        /// <param name="aid"></param>
        /// <returns></returns>
        public void ExportPublishAsExcel()
        {
            List<PublishInfo> result = HRAManagerService.GetTopPublish();

            DataTable dt = DTExtensions.ToDataTable(result);

            //DataTable title = new DataTable();
            DataRow dr = dt.NewRow();
            dr[0] = "用户名";
            dr[1] = "标题";
            dr[2] = "类别";
            dr[3] = "广告ID";
            dr[4] = "发布时间";
            dr[5] = "浏览量";
            dr[6] = "文章内容";

            dt.Rows.InsertAt(dr, 0);
            //用column name 作为列名
         
            ExportToExcel(dt, "表格");
        }




        public void ExportToExcel(DataTable dt, string fileName = "")
        {

            //生成Excel
            IWorkbook book = WorkbookUtils.BuildWorkbook(dt);

            //web 下载
            fileName = WorkbookUtils.GetExcelFileName(fileName);

            Response.Clear();
            Response.Buffer = true;
            Response.Charset = Encoding.UTF8.BodyName;
            Response.AppendHeader("Content-Disposition", "attachment;filename=" + fileName + ".xls");
            Response.ContentEncoding = Encoding.UTF8;
            Response.ContentType = "application/vnd.ms-excel; charset=UTF-8";


            book.Write(Response.OutputStream);
            Response.Flush();

            Response.End();
        }
    }
}