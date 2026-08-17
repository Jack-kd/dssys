.class Lcom/octopus/ad/internal/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/g;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/g;->a(Lcom/octopus/ad/internal/g;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/octopus/ad/internal/g;->b(Lcom/octopus/ad/internal/g;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/octopus/ad/internal/g$1;->a:Lcom/octopus/ad/internal/g;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/octopus/ad/internal/g;->b(Lcom/octopus/ad/internal/g;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, v0}, Lcom/octopus/ad/internal/nativead/NativeAdShownListener;->onAdShown(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
