.class public abstract Lk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialExListener;


# instance fields
.field public a:Lcom/anythink/interstitial/api/ATInterstitial;

.field public b:Landroid/app/Activity;

.field public c:Landroid/content/SharedPreferences;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/api/ATInterstitial;Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lk/a;->d:Ljava/lang/Integer;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lk/a;->e:Ljava/lang/Integer;

    .line 17
    .line 18
    iput-object p1, p0, Lk/a;->a:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 19
    .line 20
    iput-object p2, p0, Lk/a;->b:Landroid/app/Activity;

    .line 21
    .line 22
    const-string p1, "gap"

    .line 23
    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lk/a;->c:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a;->c:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    sget-object v1, Lh/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lk/a;->d:Ljava/lang/Integer;

    .line 15
    .line 16
    iget-object v0, p0, Lk/a;->c:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lk/a;->d:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lk/a;->d:Ljava/lang/Integer;

    .line 35
    .line 36
    sget-object v2, Lh/c;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/a;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lk/a;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk/a;->c:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    sget-object v1, Lh/c;->d:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    cmp-long v0, v2, v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lh/c;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lh/a;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lk/a;->c:Landroid/content/SharedPreferences;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lh/b;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lk/a;->c:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    sget-object v1, Lh/c;->c:Ljava/lang/String;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lk/a;->e:Ljava/lang/Integer;

    .line 62
    .line 63
    return-void
.end method

.method public abstract d(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract e(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract f(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract g(Lcom/anythink/core/api/AdError;)V
.end method

.method public abstract h()V
.end method

.method public abstract i(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public abstract j(Lcom/anythink/core/api/ATAdInfo;)V
.end method

.method public k()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lk/a;->d:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lk/a;->e:Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    rem-int/2addr v0, v1

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    return-object v0
.end method

.method public onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a;->d(Lcom/anythink/core/api/ATAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/a;->k()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lk/a;->a:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lk/a;->e(Lcom/anythink/core/api/ATAdInfo;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onInterstitialAdLoaded()V
    .locals 2

    .line 1
    sget-object v0, Lh/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lk/a;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lk/a;->h()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lk/a;->a:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->isAdReady()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lk/a;->a:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 20
    .line 21
    iget-object v1, p0, Lk/a;->b:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->show(Landroid/app/Activity;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a;->j(Lcom/anythink/core/api/ATAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a;->f(Lcom/anythink/core/api/ATAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a;->g(Lcom/anythink/core/api/AdError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/a;->i(Lcom/anythink/core/api/ATAdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
