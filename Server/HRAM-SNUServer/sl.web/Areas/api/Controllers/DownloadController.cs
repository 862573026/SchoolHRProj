﻿using System.Net;
using System.Net.Http;
using System.Web.Http;
using PetaPoco;
using sl.model;
using common.utils;
using sl.service.api;
using sl.web.ui;

namespace sl.web.Areas.api.Controllers
{
    /// <summary>
    /// http://localhost:8888/api/Download/GetDownloadList/?pageIndex=1&pageSize=2
    /// 下载管理API
    /// </summary>
    public class DownloadController : ApiController
    {
        /// <summary>
        /// 分页获取所有下载列表
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="dmTypeID"></param>
        /// <returns></returns>
        [HttpGet]
        public HttpResponseMessage GetDownloadList(int pageIndex, int pageSize, string dmTypeValue = "%%")
        {
            Page<DownLoadInfo> list = HRAMApiService.GetDownloads(pageIndex, pageSize, dmTypeValue);

            if (list != null)
            {
                var isLastPage = false;
                if (list.CurrentPage >= list.TotalPages)
                {
                    isLastPage = true;
                }
                return JsonUtils.toJson(HttpStatusCode.OK, new { pageIndex = pageIndex, pageSize = pageSize, isLastPage = isLastPage, pageItems = list.Items.Count, resultList = list.Items });
            }
            else
            {
                return JsonUtils.toJson(HttpStatusCode.PreconditionFailed, new JsonTip(ApiCode.GetDownloadListFailedCode, ApiCode.GetDownloadListFailedMessage));
            }
        }

         

        ///
        //public HttpResponseMessage GetDownloadList(int pageIndex, int pageSize, string dmTypeID = "%%")
        //{
        //    return JsonUtils.toJson(HttpStatusCode.PreconditionFailed, new JsonTip(ApiCode.GetDownloadListFailedCode, ApiCode.GetDownloadListFailedMessage));
        //}
    }


}
