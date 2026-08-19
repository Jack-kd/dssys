.class Lcom/beizi/fusion/mj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/mj;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/beizi/fusion/mj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/mj;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/mj$b;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/mj;->a(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/lj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/mj;->d(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/rn;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 20
    .line 21
    new-instance v1, Lcom/beizi/fusion/e5;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/beizi/fusion/mj$b;->a:Landroid/view/View;

    .line 24
    .line 25
    new-instance v3, Lcom/beizi/fusion/mj$b$a;

    .line 26
    .line 27
    invoke-direct {v3, p0}, Lcom/beizi/fusion/mj$b$a;-><init>(Lcom/beizi/fusion/mj$b;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Lcom/beizi/fusion/e5;-><init>(Landroid/view/View;Lcom/beizi/fusion/bo;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/beizi/fusion/mj;->a(Lcom/beizi/fusion/mj;Lcom/beizi/fusion/e5;)Lcom/beizi/fusion/e5;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
