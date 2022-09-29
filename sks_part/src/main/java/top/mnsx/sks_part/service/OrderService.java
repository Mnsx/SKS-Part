package top.mnsx.sks_part.service;

import top.mnsx.sks_part.entity.Order;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 9:56
 * @Description:
 */
public interface OrderService {
    Order insertOrder(Integer userId, Integer goodId);

    Order selectOrderByUserId(Integer userId);
}
