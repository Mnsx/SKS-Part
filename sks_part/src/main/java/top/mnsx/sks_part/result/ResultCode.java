package top.mnsx.sks_part.result;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @BelongsProject: second_kill_system
 * @User: Mnsx_x
 * @CreateTime: 2022/9/22 19:58
 * @Description: 响应码
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResultCode {
    private int code;
    private String message;

    // 成功
    public static ResultCode SUCCESS = new ResultCode(0, "success");
    // 服务器内部问题
    public static ResultCode INNER_ERROR = new ResultCode(50000, "服务器内部问题，请联系管理员");
    public static ResultCode PARAMETER_NOT_ALLOW = new ResultCode(50001, "参数不被允许");
    // 登录模块
    public static ResultCode TOKEN_ERROR = new ResultCode(40001, "请登录后在使用该系统");
    public static ResultCode NOT_ENOUGH_PERMISSION = new ResultCode(40002, "没有足够的权限");
    // 用户模块
    public static ResultCode USER_HAS_EXIST = new ResultCode(40101, "用户已经存在");
    public static ResultCode USER_NOT_EXIST = new ResultCode(40102, "用户不存在");
    public static ResultCode PHONE_HAS_REGISTER = new ResultCode(40103, "手机号已经被注册");
    public static ResultCode PASS_NOT_MATCH = new ResultCode(40104, "密码不正确");
    // 角色模块
    public static ResultCode ROLE_HAS_EXIST = new ResultCode(40201, "角色已经存在");
    public static ResultCode ROLE_NOT_EXIST = new ResultCode(40202, "角色不存在");
    // 商品模块
    public static ResultCode GOOD_HAS_EXIST = new ResultCode(40301, "商品已经存在");
    public static ResultCode GOOD_NOT_EXIST = new ResultCode(40302, "商品不存在");
    // 分类模块
    public static ResultCode CLASSIFY_NOT_EXIST = new ResultCode(40401, "分类不存在");
    public static ResultCode CLASSIFY_HAS_EXIST = new ResultCode(40402, "分类已经存在");
    // 订单模块
    public static ResultCode ORDER_HAS_EXIST = new ResultCode(40501, "订单已存在");
    public static ResultCode ORDER_NOT_EXIST = new ResultCode(40502, "订单不存在");
    public static ResultCode ORDER_STATE_NOT_ALLOW = new ResultCode(40503, "订单状态不被允许");
    // 异常信息模块
    public static ResultCode EXCEPTION_INFO_NOT_EXIST = new ResultCode(40601, "异常信息不存在");
    public static ResultCode EXCEPTION_INFO_HAS_EXIST = new ResultCode(40602, "异常信息已存在");
}
