package top.mnsx.sks_part.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import top.mnsx.sks_part.entity.Order;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 9:21
 * @Description:
 */
@Mapper
public interface OrderDao {
    Integer insertOrder(@Param("userId") Integer userId, @Param("goodId") Integer goodId);

    Order selectOrderByUserId(@Param("userId") Integer userId);
}
