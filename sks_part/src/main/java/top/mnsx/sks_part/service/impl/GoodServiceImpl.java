package top.mnsx.sks_part.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import top.mnsx.sks_part.dao.GoodDao;
import top.mnsx.sks_part.service.GoodService;
import top.mnsx.sks_part.utils.RedisUtil;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 9:43
 * @Description:
 */
@Service
@Transactional
public class GoodServiceImpl implements GoodService {
    @Autowired
    private GoodDao goodDao;
    @Autowired
    private RedisUtil redisUtil;

    @Override
    public Integer getStockCount(Integer id) {
        Integer result = goodDao.selectStockCountById(id);

        return result;
    }

    @Override
    public void updateStockCount(Integer id) {
        Integer result = goodDao.updateStockCount(id);
        if (result != 1) {
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
        }
    }
}
