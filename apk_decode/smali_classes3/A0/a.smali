.class public abstract LA0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/anythink/interstitial/api/ATInterstitial;


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "user_id"

    .line 7
    .line 8
    const-string v2, "112222"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, LA0/a;->a:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 19
    .line 20
    new-instance p1, LA0/a$a;

    .line 21
    .line 22
    invoke-direct {p1, v0, p0}, LA0/a$a;-><init>(Lcom/anythink/interstitial/api/ATInterstitial;Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/anythink/interstitial/api/ATInterstitial;->setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, LA0/a;->a:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->load()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
