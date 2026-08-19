.class Lcom/octopus/ad/internal/b/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

.field final synthetic b:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$9;->b:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$9;->a:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$9;->a:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$9;->b:Lcom/octopus/ad/internal/b/e;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->D(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$9;->b:Lcom/octopus/ad/internal/b/e;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->D(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/c;->h()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$9;->a:Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/octopus/ad/internal/nativead/NativeAdShownListener;->onAdShown(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
