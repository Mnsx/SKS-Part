package top.mnsx.sks_part.service;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 9:41
 * @Description:
 */
public interface GoodService {
    Integer getStockCount(Integer id);

    void updateStockCount(Integer id);
}
