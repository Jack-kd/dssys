.class Lcom/fl/saas/J$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/J;->a(Lcom/fl/saas/j;)V
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
    iput-object p1, p0, Lcom/fl/saas/J$c;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fl/saas/J$c;->a:Lcom/fl/saas/J;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/J;->d(Lcom/fl/saas/J;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/J$c;->a:Lcom/fl/saas/J;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/J;->e(Lcom/fl/saas/J;)Lcom/fl/saas/j;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/fl/saas/J$c;->a:Lcom/fl/saas/J;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/fl/saas/J;->e(Lcom/fl/saas/J;)Lcom/fl/saas/j;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "0"

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fl/saas/E0;->a(Lcom/fl/saas/j;Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/fl/saas/J$c;->a:Lcom/fl/saas/J;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lcom/fl/saas/J;->a(Lcom/fl/saas/J;Lcom/fl/saas/j;)Lcom/fl/saas/j;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
