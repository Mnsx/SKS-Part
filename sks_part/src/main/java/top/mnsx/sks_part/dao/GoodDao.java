package top.mnsx.sks_part.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 9:22
 * @Description:
 */
@Mapper
public interface GoodDao {
    Integer selectStockCountById(@Param("id") Integer id);
}
