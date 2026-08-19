.class public Lcom/sigmob/sdk/base/views/af;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/af$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final b:Lcom/sigmob/sdk/base/views/af$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/af$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/af;->b:Lcom/sigmob/sdk/base/views/af$a;

    return-void
.end method


# virtual methods
.method public canInstall(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkMd5()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkName()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->canInstall(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public canOpen(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->canOpen()Z

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/o;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getInteractionType()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getSubInteractionType()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getsubInteractionType()I

    move-result v0

    return v0
.end method

.method public hideSystemUI()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->b:Lcom/sigmob/sdk/base/views/af$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->b:Lcom/sigmob/sdk/base/views/af$a;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/af$a;->b()V

    :cond_0
    return-void
.end method

.method public isOpenListReport()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->S()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/o;->L()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOpenListReport()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/services/b;->c()V

    return-void
.end method

.method public showSystemUI()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->b:Lcom/sigmob/sdk/base/views/af$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/af;->b:Lcom/sigmob/sdk/base/views/af$a;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/af$a;->a()V

    :cond_0
    return-void
.end method
