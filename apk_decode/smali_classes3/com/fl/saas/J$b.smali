.class Lcom/fl/saas/J$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/J;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/J;


# direct methods
.method public constructor <init>(Lcom/fl/saas/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->destroy()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Lcom/fl/saas/adx/api/FLInterstitial;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdDisplay()V
    .locals 0

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/BaseAPI;->destroy()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Lcom/fl/saas/adx/api/FLInterstitial;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/J;->j(Lcom/fl/saas/J;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/J;->j(Lcom/fl/saas/J;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/fl/saas/J;->j(Lcom/fl/saas/J;)Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/Activity;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/fl/saas/J;->c(Lcom/fl/saas/J;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/fl/saas/J;->j(Lcom/fl/saas/J;)Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/app/Activity;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/FLInterstitial;->show(Landroid/app/Activity;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/fl/saas/J;->b(Lcom/fl/saas/J;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->destroy()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/fl/saas/J$b;->a:Lcom/fl/saas/J;

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Lcom/fl/saas/adx/api/FLInterstitial;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 136
    .line 137
    .line 138
    :cond_3
    return-void
.end method
