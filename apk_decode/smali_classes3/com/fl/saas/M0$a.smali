.class Lcom/fl/saas/M0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/M0;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/M0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/M0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/M0$a;->a:Lcom/fl/saas/M0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/M0$a;->a:Lcom/fl/saas/M0;

    .line 2
    .line 3
    new-instance v1, Lcom/fl/saas/N0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/fl/saas/M0;->c(Lcom/fl/saas/M0;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Lcom/fl/saas/N0;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/fl/saas/M0;->a(Lcom/fl/saas/M0;Lcom/fl/saas/N0;)Lcom/fl/saas/N0;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/fl/saas/M0$a;->a:Lcom/fl/saas/M0;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/fl/saas/M0;->b(Lcom/fl/saas/M0;)Lcom/fl/saas/N0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/fl/saas/M0$a;->a:Lcom/fl/saas/M0;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/fl/saas/M0;->a(Lcom/fl/saas/M0;)Lcom/fl/saas/o0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/fl/saas/N0;->a(Ljava/util/List;Lcom/fl/saas/o0;)Lcom/fl/saas/N0;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/M0$a;->a:Lcom/fl/saas/M0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/M0;->a(Lcom/fl/saas/M0;)Lcom/fl/saas/o0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x3e9

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fl/saas/M0$a;->a:Lcom/fl/saas/M0;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/fl/saas/M0;->a(Lcom/fl/saas/M0;)Lcom/fl/saas/o0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Lcom/fl/saas/o0;->b(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
