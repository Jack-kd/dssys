.class Lcom/umeng/analytics/pro/cj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/cj;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/cj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/umeng/analytics/pro/cj;->a(Lcom/umeng/analytics/pro/cj;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/umeng/analytics/pro/cj;->b(Lcom/umeng/analytics/pro/cj;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/cj;->a(Lcom/umeng/analytics/pro/cj;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/umeng/analytics/pro/cj;->c(Lcom/umeng/analytics/pro/cj;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/umeng/analytics/pro/cj;->b(Lcom/umeng/analytics/pro/cj;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/cj;->a(Lcom/umeng/analytics/pro/cj;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/umeng/analytics/pro/cj$1;->a:Lcom/umeng/analytics/pro/cj;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/umeng/analytics/pro/cj;->d(Lcom/umeng/analytics/pro/cj;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
