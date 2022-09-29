package top.mnsx.sks_part.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.mnsx.sks_part.dao.GoodDao;
import top.mnsx.sks_part.dao.OrderDao;
import top.mnsx.sks_part.entity.Order;
import top.mnsx.sks_part.service.OrderService;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 9:57
 * @Description:
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao;

    @Override
    public Order insertOrder(Integer userId, Integer goodId) {
        Integer integer = orderDao.insertOrder(userId, goodId);
        if (integer != 1) {
            throw new RuntimeException();
        }

        return orderDao.selectOrderByUserId(userId);
    }

    @Override
    public Order selectOrderByUserId(Integer userId) {
        return orderDao.selectOrderByUserId(userId);
    }
}
