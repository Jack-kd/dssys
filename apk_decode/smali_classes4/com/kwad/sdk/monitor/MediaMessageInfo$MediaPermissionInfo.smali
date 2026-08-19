.class public Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/monitor/MediaMessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaPermissionInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f0e35cb3bc24717L


# instance fields
.field public canReadICCID:I

.field public canReadInstalledPackages:I

.field public canReadLocation:I

.field public canReadMacAddress:I

.field public canReadNearbyWifiList:I

.field public canUseMacAddress:I

.field public canUseNetworkState:I

.field public canUseOaid:I

.field public canUsePhoneState:I

.field public canUseStoragePermission:I

.field public getAndroidId:I

.field public getImei:I

.field public getImeis:I

.field public getInstalledPackages:I

.field public getKsLocation:I

.field public getLocation:I

.field public getMacAddress:I

.field public getOaid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
