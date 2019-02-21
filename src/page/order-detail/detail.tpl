<div class="panel">
    <div class="panel-title">订单信息</div>
    <div class="panel-body">
        <div class="order-info">
            <div class="text-line">
                <span class="text">订单号：{{orderNo}}</span>
                <span class="text">创建时间：{{createTime}}</span>
            </div>
            <div class="text-line">
                <span class="text">
                    收件人： 
                    {{receiverName}}
                    {{shippingVo.receiverProvince}}
                    {{shippingVo.receiverCity}}
                    {{shippingVo.receiverAddress}}
                    {{shippingVo.receiverMobile}}
                </span>
            </div>
            <div class="text-line">
                <span class="text">订单状态： {{statusDesc}}</span>
            </div>
            <div class="text-line">
                <span class="text">支付方式：{{paymentTypeDesc}}</span>
            </div>
            <div class="text-line">
                {{#needPay}}
                <a class="btn" href="./payment.html?orderNumber={{orderNo}}">去支付</a>
                {{/needPay}}
                {{#isCancelable}}
                <a class="btn order-cancel">取消订单</a>
                {{/isCancelable}}
            </div>
        </div>
    </div>
    </div>
    <div class="panel">
    <div class="panel-title">商品清单</div>
    <div class="panel-body">
        <table class="product-table">
            <tr>
                <th class="cell-th cell-img">&nbsp;</th>
                <th class="cell-th cell-info">商品信息</th>
                <th class="cell-th cell-price">单价</th>
                <th class="cell-th cell-count">数量</th>
                <th class="cell-th cell-total">小计</th>
            </tr>
            {{#orderItemVoList}}
            <tr>
                <td class="cell cell-img">
                    <a href="./detail.html?productId={{productId}}" target="_blank">
                        <img class="p-img" src="{{imageHost}}{{productImage}}" alt="{{productName}}" />
                    </a>
                </td>
                <td class="cell cell-info">
                    <a class="link" href="./detail.html?productId={{productId}}" target="_blank">{{productName}}</a>
                </td>
                <td class="cell cell-price">￥{{currentUnitPrice}}</td>
                <td class="cell cell-count">{{quantity}}</td>
                <td class="cell cell-total">￥{{totalPrice}}</td>
            </tr>
            {{/orderItemVoList}}
        </table>
        <p class="total">
            <span>订单总价：</span>
            <span class="total-price">￥{{payment}}</span>
        </p>
    </div>
</div>