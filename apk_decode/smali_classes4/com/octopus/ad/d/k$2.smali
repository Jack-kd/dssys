.class Lcom/octopus/ad/d/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/k;->a(IILjava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/k;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/k$2;->a:Lcom/octopus/ad/d/k;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/k$2;->a:Lcom/octopus/ad/d/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/d/k$2;->a:Lcom/octopus/ad/d/k;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/e/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
