.class public final Lcom/kwad/sdk/core/b/a/it;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "canReadLocation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadLocation:I

    .line 3
    const-string v0, "getLocation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getLocation:I

    .line 4
    const-string v0, "getKsLocation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getKsLocation:I

    .line 5
    const-string v0, "canUsePhoneState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUsePhoneState:I

    .line 6
    const-string v0, "getImei"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImei:I

    .line 7
    const-string v0, "getImeis"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImeis:I

    .line 8
    const-string v0, "getAndroidId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getAndroidId:I

    .line 9
    const-string v0, "canUseOaid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseOaid:I

    .line 10
    const-string v0, "getOaid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getOaid:I

    .line 11
    const-string v0, "canUseMacAddress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseMacAddress:I

    .line 12
    const-string v0, "getMacAddress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getMacAddress:I

    .line 13
    const-string v0, "canUseNetworkState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseNetworkState:I

    .line 14
    const-string v0, "canUseStoragePermission"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseStoragePermission:I

    .line 15
    const-string v0, "canReadInstalledPackages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadInstalledPackages:I

    .line 16
    const-string v0, "getInstalledPackages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getInstalledPackages:I

    .line 17
    const-string v0, "canReadMacAddress"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadMacAddress:I

    .line 18
    const-string v0, "canReadNearbyWifiList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadNearbyWifiList:I

    .line 19
    const-string v0, "canReadICCID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadICCID:I

    return-void
.end method

.method private static b(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadLocation:I

    if-eqz v0, :cond_1

    .line 4
    const-string v1, "canReadLocation"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getLocation:I

    if-eqz v0, :cond_2

    .line 6
    const-string v1, "getLocation"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getKsLocation:I

    if-eqz v0, :cond_3

    .line 8
    const-string v1, "getKsLocation"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 9
    :cond_3
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUsePhoneState:I

    if-eqz v0, :cond_4

    .line 10
    const-string v1, "canUsePhoneState"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 11
    :cond_4
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImei:I

    if-eqz v0, :cond_5

    .line 12
    const-string v1, "getImei"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 13
    :cond_5
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImeis:I

    if-eqz v0, :cond_6

    .line 14
    const-string v1, "getImeis"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 15
    :cond_6
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getAndroidId:I

    if-eqz v0, :cond_7

    .line 16
    const-string v1, "getAndroidId"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 17
    :cond_7
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseOaid:I

    if-eqz v0, :cond_8

    .line 18
    const-string v1, "canUseOaid"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 19
    :cond_8
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getOaid:I

    if-eqz v0, :cond_9

    .line 20
    const-string v1, "getOaid"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 21
    :cond_9
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseMacAddress:I

    if-eqz v0, :cond_a

    .line 22
    const-string v1, "canUseMacAddress"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 23
    :cond_a
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getMacAddress:I

    if-eqz v0, :cond_b

    .line 24
    const-string v1, "getMacAddress"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 25
    :cond_b
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseNetworkState:I

    if-eqz v0, :cond_c

    .line 26
    const-string v1, "canUseNetworkState"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 27
    :cond_c
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseStoragePermission:I

    if-eqz v0, :cond_d

    .line 28
    const-string v1, "canUseStoragePermission"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 29
    :cond_d
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadInstalledPackages:I

    if-eqz v0, :cond_e

    .line 30
    const-string v1, "canReadInstalledPackages"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 31
    :cond_e
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getInstalledPackages:I

    if-eqz v0, :cond_f

    .line 32
    const-string v1, "getInstalledPackages"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 33
    :cond_f
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadMacAddress:I

    if-eqz v0, :cond_10

    .line 34
    const-string v1, "canReadMacAddress"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 35
    :cond_10
    iget v0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadNearbyWifiList:I

    if-eqz v0, :cond_11

    .line 36
    const-string v1, "canReadNearbyWifiList"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 37
    :cond_11
    iget p0, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadICCID:I

    if-eqz p0, :cond_12

    .line 38
    const-string v0, "canReadICCID"

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_12
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/it;->a(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/it;->b(Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
