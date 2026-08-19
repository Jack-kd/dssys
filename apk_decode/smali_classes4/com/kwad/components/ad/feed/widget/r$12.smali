.class final Lcom/kwad/components/ad/feed/widget/r$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/feed/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/r;->cY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic jG:Lcom/kwad/components/ad/feed/widget/r;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/r$12;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    mul-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/r$12;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/r;->d(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lcom/kwad/sdk/utils/cb;->r(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$12;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/b;->fx()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/components/ad/feed/d;->ce()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/r$12;->jG:Lcom/kwad/components/ad/feed/widget/r;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/r;->g(Lcom/kwad/components/ad/feed/widget/r;)Lcom/kwad/components/core/webview/tachikoma/i;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/kwad/components/core/webview/tachikoma/c/i;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, v2, p1}, Lcom/kwad/components/core/webview/tachikoma/c/i;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v1, 0x0

    .line 58
    const-string v3, "setSensorParams"

    .line 59
    .line 60
    invoke-virtual {v0, v3, p1, v1}, Lcom/kwad/components/core/webview/tachikoma/i;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/components/m;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return v2

    .line 64
    :cond_1
    :goto_0
    return v1
.end method
