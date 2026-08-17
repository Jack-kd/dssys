.class Lcom/fl/saas/e0$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/e0;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/e0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/e0$b;->a:Lcom/fl/saas/e0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/e0$b;->a:Lcom/fl/saas/e0;

    invoke-static {v0}, Lcom/fl/saas/e0;->b(Lcom/fl/saas/e0;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/e0$b;->a:Lcom/fl/saas/e0;

    invoke-static {v0}, Lcom/fl/saas/e0;->b(Lcom/fl/saas/e0;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/fl/saas/e0$b;->a:Lcom/fl/saas/e0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fl/saas/e0;->a(Lcom/fl/saas/e0;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/e0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/e0$b;->a()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string p2, "javascript:a(\'"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/fl/saas/e0$b;->a:Lcom/fl/saas/e0;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/fl/saas/e0;->a(Lcom/fl/saas/e0;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, "\')"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/fl/saas/e0$b;->a:Lcom/fl/saas/e0;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/fl/saas/e0;->b(Lcom/fl/saas/e0;)Landroid/webkit/WebView;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Lcom/fl/saas/E0;->a(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x0

    .line 54
    const-string v1, "kShowNumber"

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/fl/saas/S0;->a(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    add-int/2addr p1, p2

    .line 61
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDate()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "kShowDay"

    .line 70
    .line 71
    invoke-virtual {v0, v2, p2}, Lcom/fl/saas/S0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/S0;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    const-wide/16 v4, 0x3e8

    .line 79
    .line 80
    div-long/2addr v2, v4

    .line 81
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string v0, "kShowSec"

    .line 86
    .line 87
    invoke-virtual {p2, v0, v2, v3}, Lcom/fl/saas/S0;->b(Ljava/lang/String;J)Lcom/fl/saas/S0;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2, v1, p1}, Lcom/fl/saas/S0;->b(Ljava/lang/String;I)Lcom/fl/saas/S0;

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/fl/saas/i2;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/fl/saas/i2;-><init>(Lcom/fl/saas/e0$b;)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v0, 0x7d0

    .line 103
    .line 104
    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
