.class public Lcom/octopus/ad/internal/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "ethernet"

.field public static b:I = 0x2

.field private static c:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/c/a;->a()Lcom/octopus/ad/internal/c/a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/octopus/ad/internal/c/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/b;->b(Landroid/content/Context;Lcom/octopus/ad/internal/c/a;)V

    .line 4
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/b;->c(Landroid/content/Context;Lcom/octopus/ad/internal/c/a;)V

    .line 5
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/b;->a(Landroid/content/Context;Lcom/octopus/ad/internal/c/a;)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/c/a;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->w:Ljava/lang/String;

    .line 8
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->x:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/octopus/ad/d/b/i;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->y:Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->z:Ljava/lang/String;

    .line 11
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->A:Ljava/lang/String;

    .line 12
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->B:Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->C:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/c/a;->D:Ljava/lang/String;

    .line 15
    const-string v1, "com.tencent.mm"

    invoke-static {p0, v1}, Lcom/octopus/ad/d/b/i;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/c/a;->E:Z

    .line 16
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/octopus/ad/internal/c/a;->F:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 17
    const-string v0, "OctopusAd"

    const-string v1, "A Throwable Caught"

    invoke-static {v0, v1, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/octopus/ad/internal/c/a;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/octopus/ad/internal/c/a;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/octopus/ad/internal/c/a;->c:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/c/a;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 12
    sget-object v0, Lcom/octopus/ad/internal/c/b;->c:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 13
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 14
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/octopus/ad/internal/c/b;->c:Landroid/util/DisplayMetrics;

    .line 15
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget-object v0, Lcom/octopus/ad/internal/c/b;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    :cond_0
    sget-object p0, Lcom/octopus/ad/internal/c/b;->c:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/octopus/ad/internal/c/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/octopus/ad/a/g$b;->b:Lcom/octopus/ad/a/g$b;

    iput-object v0, p1, Lcom/octopus/ad/internal/c/a;->i:Lcom/octopus/ad/a/g$b;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/octopus/ad/a/g$b;->c:Lcom/octopus/ad/a/g$b;

    iput-object v0, p1, Lcom/octopus/ad/internal/c/a;->i:Lcom/octopus/ad/a/g$b;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    const-string v1, "No permission to access imei"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 7
    sget-object v0, Lcom/octopus/ad/a/g$b;->b:Lcom/octopus/ad/a/g$b;

    iput-object v0, p1, Lcom/octopus/ad/internal/c/a;->i:Lcom/octopus/ad/a/g$b;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/octopus/ad/a/g$b;->c:Lcom/octopus/ad/a/g$b;

    iput-object v0, p1, Lcom/octopus/ad/internal/c/a;->i:Lcom/octopus/ad/a/g$b;

    .line 9
    :goto_0
    invoke-static {}, Lcom/octopus/ad/d/b/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/octopus/ad/internal/c/a;->e:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/octopus/ad/d/b/i;->g()Z

    move-result v0

    iput-boolean v0, p1, Lcom/octopus/ad/internal/c/a;->f:Z

    .line 11
    invoke-static {p0}, Lcom/octopus/ad/d/b/i;->r(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/octopus/ad/internal/c/a;->g:Z

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/octopus/ad/internal/c/a;)V
    .locals 11

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "screenSize"

    .line 8
    .line 9
    invoke-static {p0, v2}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/internal/c/b;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, "_"

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    .line 55
    int-to-float v4, v4

    .line 56
    iget v5, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 57
    .line 58
    div-float/2addr v4, v5

    .line 59
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .line 61
    int-to-float v5, v5

    .line 62
    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 63
    .line 64
    div-float/2addr v5, v1

    .line 65
    mul-float/2addr v5, v5

    .line 66
    mul-float/2addr v4, v4

    .line 67
    add-float/2addr v5, v4

    .line 68
    float-to-double v4, v5

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    sget v1, Lcom/octopus/ad/internal/c/b;->b:I

    .line 74
    .line 75
    int-to-double v6, v1

    .line 76
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 77
    .line 78
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 83
    .line 84
    mul-double/2addr v4, v6

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    long-to-double v4, v4

    .line 90
    div-double/2addr v4, v6

    .line 91
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "%.2f"

    .line 100
    .line 101
    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {p0, v0, v3}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {p0, v2, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    move-object v10, v3

    .line 112
    move-object v3, v1

    .line 113
    move-object v1, v10

    .line 114
    :cond_1
    iput-object v1, p1, Lcom/octopus/ad/internal/c/a;->m:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v3, p1, Lcom/octopus/ad/internal/c/a;->n:Ljava/lang/String;

    .line 117
    .line 118
    return-void
.end method
