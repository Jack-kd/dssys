.class final Lcom/kwad/components/core/innerEc/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/f;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/a$a;Lcom/kwad/components/core/innerEc/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Rx:Lcom/kwad/components/core/e/d/a$a;

.field final synthetic SQ:Ljava/lang/String;

.field final synthetic Tc:Lcom/kwad/components/core/innerEc/a/a;

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/innerEc/a/a;Landroid/content/Context;Lcom/kwad/components/core/e/d/a$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/f$2;->Tc:Lcom/kwad/components/core/innerEc/a/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/f$2;->dK:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/core/innerEc/f$2;->Rx:Lcom/kwad/components/core/e/d/a$a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/kwad/components/core/innerEc/f$2;->SQ:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCancel(ZI)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    const-string v0, "reject"

    .line 4
    .line 5
    const-string v1, "app"

    .line 6
    .line 7
    invoke-static {p1, v0, v1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 11
    .line 12
    invoke-static {p1, v1}, Lcom/kwad/components/core/innerEc/local/a;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2;->Tc:Lcom/kwad/components/core/innerEc/a/a;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/kwad/components/core/innerEc/a/a;->oW()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/kwad/components/core/innerEc/logger/a;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onFailed(ILjava/lang/String;I)V
    .locals 3

    .line 1
    const/16 v0, 0x2712

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    const-string v1, "fail"

    .line 8
    .line 9
    const-string v2, "app"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, p3}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    invoke-static {p3, v2}, Lcom/kwad/components/core/innerEc/local/a;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "errorCode="

    .line 22
    .line 23
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, ",errorMsg="

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/f$2;->Tc:Lcom/kwad/components/core/innerEc/a/a;

    .line 42
    .line 43
    invoke-interface {p2}, Lcom/kwad/components/core/innerEc/a/a;->rn()V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    const/16 p3, 0x7d0

    .line 49
    .line 50
    invoke-static {p2, p3, p1}, Lcom/kwad/components/core/innerEc/logger/a;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/kwad/components/core/innerEc/f$2;->onCancel(ZI)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string v0, "SdkInnerECWrapper"

    .line 2
    .line 3
    const-string v1, "startAuthPage startAuthPage onSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/f$2;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 9
    .line 10
    const-string v1, "app"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/logger/a;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/kwad/components/core/innerEc/f$2$1;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lcom/kwad/components/core/innerEc/f$2$1;-><init>(Lcom/kwad/components/core/innerEc/f$2;I)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/f$2;->SQ:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v0, p2}, Lcom/kwad/components/core/innerEc/e;->b(Ljava/lang/String;Lcom/kwad/components/core/innerEc/c;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
