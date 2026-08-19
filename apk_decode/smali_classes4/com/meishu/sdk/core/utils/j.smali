.class public Lcom/meishu/sdk/core/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static volatile b:Z = false

.field public static c:I = 0x2a3


# direct methods
.method public static a(I)V
    .locals 1

    .line 2
    sget v0, Lcom/meishu/sdk/core/utils/j;->c:I

    or-int/2addr p0, v0

    sput p0, Lcom/meishu/sdk/core/utils/j;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    .line 3
    const-string v0, "Coolpad"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/meishu/sdk/core/utils/l;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/utils/l;-><init>(Landroid/content/Context;)V

    if-eqz p0, :cond_1

    .line 5
    instance-of v2, p0, Landroid/app/Application;

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    :cond_1
    sget-object v2, Lcom/meishu/sdk/core/oaid/impl/l;->a:Lcom/meishu/sdk/core/oaid/b;

    if-eqz v2, :cond_2

    goto/16 :goto_c

    .line 8
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "LENOVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 10
    const-string v3, "ZUK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_8

    .line 11
    :cond_3
    const-string v3, "MOTOLORA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 12
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_8

    .line 13
    :cond_4
    const-string v3, "MEIZU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FLYME"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_7

    .line 16
    :cond_5
    const-string v3, "NUBIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_6

    .line 18
    :cond_6
    const-string v3, "XIAOMI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 20
    const-string v3, "REDMI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_5

    .line 21
    :cond_7
    const-string v3, "ro.miui.ui.version.name"

    const-string v5, ""

    invoke-static {v3, v5}, Lcom/meishu/sdk/core/oaid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22
    const-string v3, "BLACKSHARK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_5

    .line 24
    :cond_8
    const-string v3, "SAMSUNG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_4

    .line 26
    :cond_9
    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 28
    const-string v3, "ro.vivo.os.version"

    invoke-static {v3, v5}, Lcom/meishu/sdk/core/oaid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    .line 29
    :cond_a
    const-string v3, "ASUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_2

    .line 31
    :cond_b
    invoke-static {}, Lcom/meishu/sdk/core/oaid/c;->a()Z

    move-result v3

    if-nez v3, :cond_14

    .line 32
    const-string v3, "ro.build.version.emui"

    invoke-static {v3, v5}, Lcom/meishu/sdk/core/oaid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_1

    .line 33
    :cond_c
    const-string v3, "OPPO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 35
    const-string v3, "REALME"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 36
    const-string v3, "ro.build.version.opporom"

    invoke-static {v3, v5}, Lcom/meishu/sdk/core/oaid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    .line 37
    :cond_d
    const-string v3, "ONEPLUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_0

    .line 39
    :cond_e
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_10

    .line 41
    :cond_f
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/b;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/b;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 42
    :catch_0
    :cond_10
    const-string v0, "ro.odm.manufacturer"

    invoke-static {v0, v5}, Lcom/meishu/sdk/core/oaid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PRIZE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 43
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/c;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/c;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 44
    :cond_11
    const-string v0, "ro.build.freeme.label"

    invoke-static {v0, v5}, Lcom/meishu/sdk/core/oaid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 45
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/e;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/e;-><init>(Landroid/content/Context;)V

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    goto :goto_9

    .line 46
    :cond_13
    :goto_0
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/n;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/n;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 47
    :cond_14
    :goto_1
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/g;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/g;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 48
    :cond_15
    :goto_2
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/a;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/a;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 49
    :cond_16
    :goto_3
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/p;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/p;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 50
    :cond_17
    :goto_4
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/o;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/o;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 51
    :cond_18
    :goto_5
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/q;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/q;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 52
    :cond_19
    :goto_6
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/k;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/k;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 53
    :cond_1a
    :goto_7
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/i;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/i;-><init>(Landroid/content/Context;)V

    goto :goto_9

    .line 54
    :cond_1b
    :goto_8
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/h;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/h;-><init>(Landroid/content/Context;)V

    .line 55
    :goto_9
    sput-object v0, Lcom/meishu/sdk/core/oaid/impl/l;->a:Lcom/meishu/sdk/core/oaid/b;

    if-eqz v0, :cond_1c

    .line 56
    invoke-interface {v0}, Lcom/meishu/sdk/core/oaid/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 57
    sget-object p0, Lcom/meishu/sdk/core/oaid/impl/l;->a:Lcom/meishu/sdk/core/oaid/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    sget-object v2, Lcom/meishu/sdk/core/oaid/impl/l;->a:Lcom/meishu/sdk/core/oaid/b;

    goto :goto_c

    .line 59
    :cond_1c
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/j;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/j;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/core/oaid/impl/j;->a()Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_a
    move-object v2, v0

    goto :goto_b

    .line 61
    :cond_1d
    new-instance v0, Lcom/meishu/sdk/core/oaid/impl/f;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/oaid/impl/f;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/core/oaid/impl/f;->a()Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_a

    .line 63
    :cond_1e
    new-instance p0, Lcom/meishu/sdk/core/oaid/impl/d;

    invoke-direct {p0}, Lcom/meishu/sdk/core/oaid/impl/d;-><init>()V

    move-object v2, p0

    .line 64
    :goto_b
    sput-object v2, Lcom/meishu/sdk/core/oaid/impl/l;->a:Lcom/meishu/sdk/core/oaid/b;

    .line 65
    :goto_c
    invoke-interface {v2, v1}, Lcom/meishu/sdk/core/oaid/b;->a(Lcom/meishu/sdk/core/oaid/a;)V

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/meishu/sdk/core/utils/j;->b:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 9

    .line 1
    const-string v0, "DeviceUtil"

    .line 2
    .line 3
    const-string v1, "oaid_e"

    .line 4
    .line 5
    const-string v2, "dclk"

    .line 6
    .line 7
    const-string v3, "pck_id_bean"

    .line 8
    .line 9
    const-string v4, "shake_act_type"

    .line 10
    .line 11
    const-string v5, "oaid"

    .line 12
    .line 13
    const-string v6, ""

    .line 14
    .line 15
    sget-boolean v7, Lcom/meishu/sdk/core/utils/j;->b:Z

    .line 16
    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p0, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    :try_start_0
    const-string v7, "MS"

    .line 24
    .line 25
    invoke-static {v7}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-interface {v7}, Lcom/meishu/sdk/core/e;->config()Lcom/meishu/sdk/core/d;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lcom/meishu/sdk/core/MSAdConfig;->appId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-interface {v7, p0, v8, v6}, Lcom/meishu/sdk/core/d;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v7

    .line 46
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lcom/meishu/sdk/core/MSAdConfig;->enableOaid()Z

    .line 60
    .line 61
    .line 62
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz v7, :cond_5

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    :try_start_2
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8, v1}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v8, v1, v7}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_2

    .line 89
    .line 90
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/g1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sput-object v1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    goto/16 :goto_b

    .line 99
    .line 100
    :catch_1
    move-exception v1

    .line 101
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_2
    sget-object v1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, v5}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, v5, v7}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    sput-object v1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sput-object v1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 142
    .line 143
    :cond_4
    :goto_3
    sget-object v1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 152
    .line 153
    const-string v5, "honor"

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v5, "honor_oaid"

    .line 166
    .line 167
    invoke-virtual {v1, v5, v7}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sput-object v1, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 172
    .line 173
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v5, "Read oaid from cache, oaid="

    .line 179
    .line 180
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    sget-object v5, Lcom/meishu/sdk/core/utils/j;->a:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const-string v5, "useHttps"

    .line 200
    .line 201
    const/4 v7, 0x3

    .line 202
    invoke-virtual {v1, v5, v7}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    sput v1, Lcom/meishu/sdk/core/utils/r0;->l:I

    .line 207
    .line 208
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v4}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    const/4 v5, 0x0

    .line 217
    if-eqz v1, :cond_6

    .line 218
    .line 219
    sget v1, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 220
    .line 221
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v7, v4, v5}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;I)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    or-int/2addr v1, v4

    .line 230
    sput v1, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_6
    sget v1, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 234
    .line 235
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-interface {v7, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    or-int/2addr v1, v4

    .line 244
    sput v1, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 245
    .line 246
    :goto_4
    sget v1, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 247
    .line 248
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/h;->a(I)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    sput v1, Lcom/meishu/sdk/core/utils/j;->c:I

    .line 253
    .line 254
    new-instance v1, Lcom/google/gson/Gson;

    .line 255
    .line 256
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    .line 258
    .line 259
    :try_start_4
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v4, v3}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_7

    .line 268
    .line 269
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v4, v3, v6}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    goto :goto_5

    .line 278
    :catchall_1
    move-exception v3

    .line 279
    goto :goto_6

    .line 280
    :cond_7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_8

    .line 293
    .line 294
    const-class v4, Lcom/meishu/sdk/core/utils/PckIdBean;

    .line 295
    .line 296
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lcom/meishu/sdk/core/utils/PckIdBean;

    .line 301
    .line 302
    sput-object v3, Lcom/meishu/sdk/core/utils/r0;->b:Lcom/meishu/sdk/core/utils/PckIdBean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 306
    .line 307
    .line 308
    :cond_8
    :goto_7
    :try_start_6
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    const-string v4, "pack_ad"

    .line 313
    .line 314
    invoke-virtual {v3, v4, v6}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-nez v4, :cond_9

    .line 323
    .line 324
    const-class v4, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 325
    .line 326
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 331
    .line 332
    sput-object v3, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :catchall_2
    move-exception v3

    .line 336
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 337
    .line 338
    .line 339
    :cond_9
    :goto_8
    :try_start_8
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_a

    .line 348
    .line 349
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {v3, v2, v6}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    goto :goto_9

    .line 358
    :catchall_3
    move-exception v1

    .line 359
    goto :goto_a

    .line 360
    :cond_a
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    :goto_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-nez v3, :cond_b

    .line 373
    .line 374
    const-class v3, Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 375
    .line 376
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 381
    .line 382
    sput-object v1, Lcom/meishu/sdk/core/utils/r0;->d:Lcom/meishu/sdk/core/utils/PackageBean$DClick;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :goto_a
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 386
    .line 387
    .line 388
    goto :goto_c

    .line 389
    :goto_b
    const-string v2, "Read oaid from cache failed"

    .line 390
    .line 391
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 395
    .line 396
    .line 397
    :cond_b
    :goto_c
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 398
    .line 399
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 400
    .line 401
    new-instance v1, Lcom/meishu/sdk/core/utils/j$a;

    .line 402
    .line 403
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/utils/j$a;-><init>(Landroid/content/Context;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 407
    .line 408
    .line 409
    return-void
.end method
