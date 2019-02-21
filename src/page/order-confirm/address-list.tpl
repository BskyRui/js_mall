{{#list}}
{{#isActive}}
<div class="address-item active" data-id="{{id}}">
{{/isActive}}
{{^isActive}}
<div class="address-item" data-id="{{id}}">
{{/isActive}}
    <div class="address-title">
        {{receiverCity}} {{receiverProvince}} （ {{receiverName}} 收 ）
    </div>
    <div class="address-detail">
        {{receiverAddress}} {{receiverPhone}}
    </div>
    <div class="address-opera">
        <span class="link address-update">编辑</span>
        <span class="link address-delete">删除</span>
    </div>
</div>
{{/list}}
<div class="address-add">
    <div class="address-new">
        <i class="fa fa-plus"></i>
        <div class="text">使用新地址</div>
    </div>
</div>