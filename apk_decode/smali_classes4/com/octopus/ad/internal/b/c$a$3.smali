.class Lcom/octopus/ad/internal/b/c$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/c$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/octopus/ad/internal/b/c$a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/c$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/c$a$3;->b:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/internal/b/c$a$3;->a:I

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a$3;->b:Lcom/octopus/ad/internal/b/c$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/b/c$a$3;->b:Lcom/octopus/ad/internal/b/c$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/octopus/ad/internal/b/c$a;->c:Lcom/octopus/ad/internal/b/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/octopus/ad/internal/b/c;->a(Lcom/octopus/ad/internal/b/c;)Lcom/octopus/ad/NativeAdListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/octopus/ad/internal/b/c$a$3;->a:I

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdListener;->onAdFailed(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
