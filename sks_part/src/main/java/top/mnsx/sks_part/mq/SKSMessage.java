package top.mnsx.sks_part.mq;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SKSMessage {
	private Integer userId;
	private Integer goodsId;
}
