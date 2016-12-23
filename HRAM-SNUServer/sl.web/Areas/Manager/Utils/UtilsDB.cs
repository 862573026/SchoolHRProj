﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using sl.model;
using PetaPoco;

namespace sl.web
{
    /// <summary>
    /// 数据库通用方法
    /// </summary>
    public class UtilsDB
    {
        /// <summary>
        /// C#特有的单例模式写法,调用Database
        /// </summary>
        public static readonly Database DB = new Database("ConnectionString");

        #region 查询用户类型
        public static List<T_UserType> GetUserTypeList()
        {
            List<T_UserType> userTypes = new List<T_UserType>();
            Sql sql = Sql.Builder;
            sql.Select("*")
                .From("T_UserType")
                .OrderBy("A_LoginTypeID asc");
            userTypes = DB.Fetch<T_UserType>(sql);
            return userTypes;
        }
        #endregion

        #region 查询会员审核结果
        public static List<T_ReviewResult> GetReviewResults()
        {
            List<T_ReviewResult> reviewResults = new List<T_ReviewResult>();
            Sql sql = Sql.Builder;
            sql.Select("*")
                .From("T_ReviewResult")
                .OrderBy("M_ReviewResultID asc");
            reviewResults = DB.Fetch<T_ReviewResult>(sql);
            return reviewResults;
        }
        #endregion

        #region 查询会员类型
        public static List<T_MemberType> GetMemberTypes()
        {
            List<T_MemberType> reviewResults = new List<T_MemberType>();
            Sql sql = Sql.Builder;
            sql.Select("*")
                .From("T_MemberType")
                .OrderBy("M_TypeID asc");
            reviewResults = DB.Fetch<T_MemberType>(sql);
            return reviewResults;
        }
        #endregion
    }
}