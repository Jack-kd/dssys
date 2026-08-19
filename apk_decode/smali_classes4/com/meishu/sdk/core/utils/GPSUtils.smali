.class public Lcom/meishu/sdk/core/utils/GPSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/GPSUtils$b;
    }
.end annotation


# instance fields
.field public locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mOnLocationListener:Lcom/meishu/sdk/core/utils/GPSUtils$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/meishu/sdk/core/utils/GPSUtils$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/utils/GPSUtils$a;-><init>(Lcom/meishu/sdk/core/utils/GPSUtils;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->locationListener:Landroid/location/LocationListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/utils/GPSUtils;)Lcom/meishu/sdk/core/utils/GPSUtils$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->mOnLocationListener:Lcom/meishu/sdk/core/utils/GPSUtils$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getL()[D
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/GPSUtils;->getLocation()Landroid/location/Location;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    new-array v0, v1, [D

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aput-wide v2, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aput-wide v4, v0, v1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-array v0, v1, [D

    .line 26
    .line 27
    fill-array-data v0, :array_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getLocation()Landroid/location/Location;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 5
    .line 6
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v2, "location"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/location/LocationManager;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->locationManager:Landroid/location/LocationManager;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "gps"

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v2, "network"

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_6

    .line 58
    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v2, v0

    .line 64
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v4, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->locationManager:Landroid/location/LocationManager;

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    .line 92
    .line 93
    .line 94
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    cmpg-float v4, v4, v5

    .line 96
    .line 97
    if-gez v4, :cond_2

    .line 98
    .line 99
    :cond_4
    move-object v2, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    return-object v2

    .line 102
    :cond_6
    return-object v0

    .line 103
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public removeListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->locationManager:Landroid/location/LocationManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/GPSUtils;->locationListener:Landroid/location/LocationListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
