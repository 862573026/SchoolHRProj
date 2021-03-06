﻿using System;

namespace sl.validate.ValidRules
{
    /// <summary>
    /// 表示远程验证
    /// </summary>
    public class RemoteAttribute : ValidRuleBase
    {
        /// <summary>
        /// 远程地址
        /// </summary>
        public string Url { get; set; }

        /// <summary>
        /// 要传递的目标标签的Id
        /// </summary>
        public string[] TargetId { get; set; }

        /// <summary>
        /// 远程验证
        /// </summary>
        /// <param name="url">远程地址</param>
        /// <param name="targetId">要传递的目标标签的Id</param>
        public RemoteAttribute(string url, params string[] targetId)
        {
            if (targetId == null || targetId.Length == 0)
            {
                throw new ArgumentException("目标元素ID至少为一个", "targetId");
            }
            this.Url = url;
            this.TargetId = targetId;
            this.OrderIndex = 2;
        }

        /// <summary>
        /// 生成验证框
        /// </summary>
        /// <returns></returns>
        public override ValidBox ToValidBox()
        {
            var param = new object[this.TargetId.Length + 1];
            param[0] = this.Url;
            Array.Copy(this.TargetId, 0, param, 1, this.TargetId.Length);
            var validType = this.ValidTypeName + ValidBox.MakeJsArray(param);
            return new ValidBox(validType, this.Message);
        }

        /// <summary>
        /// 验证验证
        /// 无法验证
        /// </summary>
        /// <param name="model"></param>
        /// <param name="propertyValue"></param>
        /// <returns></returns>
        public override bool IsValid(object model, object propertyValue)
        {
            return true;
        }
    }
}
