.class Lcom/octopus/ad/internal/b/f$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/f$4;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$4$1;->a:Lcom/octopus/ad/internal/b/f$4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$4$1;->a:Lcom/octopus/ad/internal/b/f$4;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/octopus/ad/internal/b/f$4;->a:Lcom/octopus/ad/listener/OnCpaListener;

    .line 12
    .line 13
    const-string p2, "true"

    .line 14
    .line 15
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-interface {p1, p2}, Lcom/octopus/ad/listener/OnCpaListener;->onCpaResult(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
