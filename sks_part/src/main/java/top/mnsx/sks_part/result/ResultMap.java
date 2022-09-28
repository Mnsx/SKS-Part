package top.mnsx.sks_part.result;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @BelongsProject: second_kill_system
 * @User: Mnsx_x
 * @CreateTime: 2022/9/22 15:05
 * @Description: 响应类
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResultMap<T> {
    private Integer code;
    private T data;
    private String message;

    ResultMap(Builder builder) {
        this.code = builder.code;
        this.data = builder.data;
        this.message = builder.message;
    }

    public ResultMap<T> ok(T data) {
        return builder().code(ResultCode.SUCCESS.getCode())
                .message(ResultCode.SUCCESS.getMessage())
                .data(data)
                .build();
    }

    public ResultMap<T> ok() {
        return builder().code(ResultCode.SUCCESS.getCode())
                .message(ResultCode.SUCCESS.getMessage())
                .build();
    }

    public ResultMap<T> fail(ResultCode resultCode) {
        return builder().code(resultCode.getCode())
                .message(resultCode.getMessage())
                .build();
    }

    public ResultMap<T> fail(ResultCode resultCode, T data) {
        return builder().code(resultCode.getCode())
                .message(resultCode.getMessage())
                .data(data)
                .build();
    }

    private Builder builder() {
        return new Builder();
    }

    private class Builder {
        private Integer code;
        private T data;
        private String message;

        public Builder code(Integer code) {
            this.code = code;
            return this;
        }

        public Builder data(T data) {
            this.data = data;
            return this;
        }

        public Builder message(String message) {
            this.message = message;
            return this;
        }

        public ResultMap<T> build() {
            return new ResultMap<>(this);
        }
    }
}