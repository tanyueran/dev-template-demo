package com.github.tanyueran.entity;

import com.alibaba.fastjson.annotation.JSONField;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.util.Date;

// 红包详情
public class RedPacketDetail {
  // 红包详情主键id
  @NotEmpty(message = "红包详情id不可为空")
  private String id;

  //  红包id
  @NotEmpty(message = "所属红包的id不可为空")
  private String packet_id;

  // 领取的金额
  @NotEmpty(message = "领取金额不可为空")
  @Size(message = "领取金额至少大于0")
  private Double amout;

  // 领取时间
  @JSONField(format = "yyyy-MM-dd HH:mm:ss")
  private Date createTime;

  public RedPacketDetail() {
  }

  @Override
  public String toString() {
    return "RedPacketDetail{" +
      "id='" + id + '\'' +
      ", packet_id='" + packet_id + '\'' +
      ", amout=" + amout +
      ", createTime=" + createTime +
      '}';
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPacket_id() {
    return packet_id;
  }

  public void setPacket_id(String packet_id) {
    this.packet_id = packet_id;
  }

  public Double getAmout() {
    return amout;
  }

  public void setAmout(Double amout) {
    this.amout = amout;
  }

  public Date getCreateTime() {
    return createTime;
  }

  public void setCreateTime(Date createTime) {
    this.createTime = createTime;
  }
}
