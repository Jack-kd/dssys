.class public Lcom/meishu/sdk/core/domain/MeishuRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private app_id:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_package:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private device_adid:Ljava/lang/String;

.field private device_brand:Ljava/lang/String;

.field private device_geo_lat:D

.field private device_geo_lon:D

.field private device_height:I

.field private device_idfv:Ljava/lang/String;

.field private device_imei:Ljava/lang/String;

.field private device_imsi:Ljava/lang/String;

.field private device_ip:Ljava/lang/String;

.field private device_mac:Ljava/lang/String;

.field private device_model:Ljava/lang/String;

.field private device_network:I

.field private device_openudid:Ljava/lang/String;

.field private device_orientation:I

.field private device_os:Ljava/lang/String;

.field private device_ppi:Ljava/lang/String;

.field private device_type:I

.field private device_type_os:Ljava/lang/String;

.field private device_ua:Ljava/lang/String;

.field private device_width:I

.field private is_mobile:I

.field private pid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "3.0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->version:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_openudid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_idfv:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_package()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_package:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_adid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_adid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_brand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_brand:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_geo_lat()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_geo_lat:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDevice_geo_lon()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_geo_lon:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDevice_height()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_height:I

    .line 2
    .line 3
    return v0
.end method

.method public getDevice_idfv()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_idfv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_imei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_imei:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_imsi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_imsi:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_ip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_mac()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_mac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_model:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_network:I

    .line 2
    .line 3
    return v0
.end method

.method public getDevice_openudid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_openudid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_orientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_orientation:I

    .line 2
    .line 3
    return v0
.end method

.method public getDevice_os()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_os:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_ppi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_ppi:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getDevice_type_os()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_type_os:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_ua()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_ua:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDevice_width()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_width:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_mobile()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->is_mobile:I

    .line 2
    .line 3
    return v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_package(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_package:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApp_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_adid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_adid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_brand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_brand:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_geo_lat(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_geo_lat:D

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_geo_lon(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_geo_lon:D

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_height(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_height:I

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_idfv(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_idfv:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_imei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_imei:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_imsi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_imsi:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_ip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_ip:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_mac(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_mac:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_model(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_model:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_network:I

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_openudid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_openudid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_orientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_orientation:I

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_os(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_os:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_ppi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_ppi:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_type_os(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_type_os:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_ua(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_ua:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice_width(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->device_width:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_mobile(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->is_mobile:I

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/MeishuRequest;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
