.class Lcom/octopus/ad/internal/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/h;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/h$2;->a:Lcom/octopus/ad/internal/h;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/h$2;->a:Lcom/octopus/ad/internal/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->d(Lcom/octopus/ad/internal/h;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/h$2;->a:Lcom/octopus/ad/internal/h;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->d(Lcom/octopus/ad/internal/h;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/octopus/ad/internal/h$2;->a:Lcom/octopus/ad/internal/h;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/octopus/ad/internal/h;->e(Lcom/octopus/ad/internal/h;)Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
