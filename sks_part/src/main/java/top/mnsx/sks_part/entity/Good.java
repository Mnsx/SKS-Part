package top.mnsx.sks_part.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * @BelongsProject: sks_part
 * @User: Mnsx_x
 * @CreateTime: 2022/9/28 8:54
 * @Description: 商品实例
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Good {
    private Integer id;
    private Integer stockCount;
}
