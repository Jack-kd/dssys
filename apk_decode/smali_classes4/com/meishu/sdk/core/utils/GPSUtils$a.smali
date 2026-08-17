.class public Lcom/meishu/sdk/core/utils/GPSUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/GPSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/GPSUtils;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/GPSUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/GPSUtils$a;->a:Lcom/meishu/sdk/core/utils/GPSUtils;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/GPSUtils$a;->a:Lcom/meishu/sdk/core/utils/GPSUtils;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/GPSUtils;->access$000(Lcom/meishu/sdk/core/utils/GPSUtils;)Lcom/meishu/sdk/core/utils/GPSUtils$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/GPSUtils$a;->a:Lcom/meishu/sdk/core/utils/GPSUtils;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/GPSUtils;->access$000(Lcom/meishu/sdk/core/utils/GPSUtils;)Lcom/meishu/sdk/core/utils/GPSUtils$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/utils/GPSUtils$b;->a(Landroid/location/Location;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
