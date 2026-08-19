.class public Lcom/meishu/sdk/core/utils/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Lcom/meishu/sdk/core/utils/PckIdBean; = null

.field public static c:Ljava/lang/String; = null

.field public static d:Lcom/meishu/sdk/core/utils/PackageBean$DClick; = null

.field public static e:I = 0x1

.field public static f:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;",
            ">;"
        }
    .end annotation
.end field

.field public static g:J = 0x0L

.field public static h:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static i:I = 0x0

.field public static j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean; = null

.field public static k:I = 0x0

.field public static l:I = 0x3

.field public static m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

.field public static n:Ljava/lang/Integer;

.field public static o:I

.field public static p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I


# direct methods
.method public static a()I
    .locals 2

    const/4 v0, 0x0

    .line 191
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getVideoCacheTime()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/List;)Lcom/meishu/sdk/core/utils/PckIdBean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;I)",
            "Lcom/meishu/sdk/core/utils/PckIdBean;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_8

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    .line 155
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 156
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 157
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 158
    sget-object v4, Lcom/meishu/sdk/core/utils/d$b;->a:Lcom/meishu/sdk/core/utils/d;

    .line 159
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    goto :goto_2

    .line 161
    :cond_0
    iget-object v5, v4, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, v4, Lcom/meishu/sdk/core/utils/d;->m:Ljava/lang/Object;

    monitor-enter v5

    .line 163
    :try_start_0
    invoke-virtual {v4, v6}, Lcom/meishu/sdk/core/utils/d;->a(Lcom/meishu/sdk/core/utils/PackageBean;)V

    .line 164
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 165
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    .line 166
    :try_start_1
    iget-object v7, v4, Lcom/meishu/sdk/core/utils/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    iget-object v4, v4, Lcom/meishu/sdk/core/utils/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v4

    :catchall_1
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    goto :goto_3

    .line 168
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 170
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 172
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 173
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_6
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_8
    new-instance p0, Lcom/meishu/sdk/core/utils/PckIdBean;

    invoke-direct {p0}, Lcom/meishu/sdk/core/utils/PckIdBean;-><init>()V

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/utils/PckIdBean;->setApp_y(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/utils/PckIdBean;->setApp_n(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PckIdBean;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->appId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    const-string v1, "2.5.13.0"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1f4ce4

    .line 103
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_version_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    .line 106
    :cond_2
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    const-string v2, "app_package"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 110
    const-string v2, "device_manufacturer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_4
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 112
    const-string v2, "device_brand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_5
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    const-string v2, "device_model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_7

    .line 116
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_7
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init_uuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "ver"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 122
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object p2

    const-string v1, "device_oaid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_8
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 124
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 125
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseAndroidId()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 127
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_a
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 129
    :cond_b
    :goto_0
    sget-object p2, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 130
    sget-object p2, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    const-string v1, "device_adid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_c
    sget-object p2, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "."

    if-nez v1, :cond_d

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_d
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PckIdBean;->getApp_n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_10

    .line 138
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 139
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 140
    :cond_f
    const-string p1, "app_y"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    :cond_11
    const-string p1, "app_n"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_12
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->l(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 146
    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_ppi"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_width"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget p1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_height"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    const-string p1, "device_density"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "2.5.13.0"

    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "packageKey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    const-string v3, "app_id"

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meishu/sdk/core/MSAdConfig;->appId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    const-string v3, "sdk_version"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v0, "sdk_version_code"

    const-wide/32 v3, 0x1f4ce4

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    .line 10
    :cond_2
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    const-string v0, "app_package"

    sget-object v3, Lcom/meishu/sdk/core/utils/r0;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    const-string v0, "device_os"

    const-string v3, "android"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v0, "oem"

    const-string v3, "ms"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "version"

    sget-object v3, Lcom/meishu/sdk/core/utils/y0;->a:Ljava/lang/String;

    const-string v3, "20251125"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 17
    const-string v3, "device_manufacturer"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 19
    const-string v3, "device_brand"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 21
    const-string v3, "device_model"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_6
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    const-string v0, "device_oaid"

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getLocalOaid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 25
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 26
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_8
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->customController()Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig$CustomController;->isCanUseAndroidId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_9
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/y0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    .line 32
    :cond_a
    :goto_0
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    const-string v0, "device_adid"

    sget-object v3, Lcom/meishu/sdk/core/utils/r0;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_c

    .line 35
    const-string v3, "country"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v3, "language"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_c
    const-string v0, "init_uuid"

    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "init_time"

    invoke-static {}, Lcom/meishu/sdk/core/MSAdConfig;->initTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 41
    const-class v3, Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/core/utils/PackageBean;

    if-eqz v1, :cond_d

    .line 42
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 43
    const-string v3, "ver"

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_d
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/g1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :catch_0
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->isTest()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "https://sdk-demo.1rtb.net/sdk/config"

    goto :goto_1

    :cond_e
    const-string v0, "https://sdk.1rtb.net/sdk/config"

    .line 49
    :goto_1
    new-instance v2, Lcom/meishu/sdk/core/utils/r0$a;

    invoke-direct {v2, p0}, Lcom/meishu/sdk/core/utils/r0$a;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, p0, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/meishu/sdk/core/utils/z;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PackageBean;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getVer()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getRequired()Ljava/util/List;

    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getOthers()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getTtl()Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PackageBean;Z)V
    .locals 2

    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getSty()Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/PackageBean$SplashBean;->getV()I

    move-result p0

    sput p0, Lcom/meishu/sdk/core/utils/r0;->e:I

    .line 62
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget v0, Lcom/meishu/sdk/core/utils/r0;->e:I

    const-string v1, "splshsty"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p0

    sget v0, Lcom/meishu/sdk/core/utils/r0;->e:I

    const-string v1, "splshsty"

    invoke-virtual {p0, v1, v0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getWebviewLimitedSchemes()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 65
    sput-object p0, Lcom/meishu/sdk/core/utils/r0;->h:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "black_scheme"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    const-string v1, "black_scheme"

    invoke-virtual {v0, v1, p0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getDpflag()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 71
    sput-object p0, Lcom/meishu/sdk/core/utils/r0;->f:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dpflag"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v0

    const-string v1, "dpflag"

    invoke-virtual {v0, v1, p0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :catchall_1
    :cond_2
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_3

    .line 77
    sget-object p0, Lcom/meishu/sdk/core/utils/d$b;->a:Lcom/meishu/sdk/core/utils/d;

    .line 78
    iget-object p2, p0, Lcom/meishu/sdk/core/utils/d;->m:Ljava/lang/Object;

    monitor-enter p2

    .line 79
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/utils/d;->a(Lcom/meishu/sdk/core/utils/PackageBean;)V

    .line 80
    monitor-exit p2

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 81
    :cond_3
    :goto_0
    sget-object p0, Lcom/meishu/sdk/core/utils/d$b;->a:Lcom/meishu/sdk/core/utils/d;

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_4

    move p2, v1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/meishu/sdk/core/utils/d;->a(ZZ)V

    .line 83
    :cond_5
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 85
    :try_start_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "packageKey"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "pck_id_bean"

    .line 86
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/r0;->a(Ljava/util/List;)Lcom/meishu/sdk/core/utils/PckIdBean;

    move-result-object p1

    sput-object p1, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;

    .line 87
    invoke-static {p2}, Lcom/meishu/sdk/core/utils/r0;->a(Ljava/util/List;)Lcom/meishu/sdk/core/utils/PckIdBean;

    move-result-object p1

    .line 88
    invoke-static {p0, p1, p4}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PckIdBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/g1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string p2, "data"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 93
    new-instance p0, Lcom/meishu/sdk/core/utils/r0$b;

    invoke-direct {p0}, Lcom/meishu/sdk/core/utils/r0$b;-><init>()V

    const/4 p2, 0x0

    invoke-static {p5, p2, p1, p2, p0}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/meishu/sdk/core/utils/z;)V

    .line 94
    :cond_0
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 95
    sget-object p1, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getApp_package()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x100

    .line 181
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {v1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 183
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 186
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :goto_0
    move v0, v3

    .line 187
    :catch_0
    :cond_2
    invoke-virtual {p2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 188
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setInstalled(Z)V

    .line 189
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setLastCheckTime(J)V

    .line 190
    invoke-virtual {p2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v0

    int-to-long p0, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr p0, v4

    add-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setExpirationTime(J)V

    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method public static b()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getWwtt()I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    :cond_0
    return v0
.end method

.method public static c()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getFeed()Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getFeed()Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;->getNorlsc()I

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :catch_0
    :cond_0
    return v0
.end method

.method public static d()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getFeed()Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getFeed()Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$FeedConfigBean;->getUseOldStyle()I

    .line 19
    .line 20
    .line 21
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :catch_0
    :cond_0
    return v0
.end method
