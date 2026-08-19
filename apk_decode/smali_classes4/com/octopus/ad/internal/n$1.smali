.class Lcom/octopus/ad/internal/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/n;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/n$1;->a:Lcom/octopus/ad/internal/n;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/n$1;->a:Lcom/octopus/ad/internal/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/n;->a(Lcom/octopus/ad/internal/n;)Lcom/octopus/ad/internal/c/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/n$1;->a:Lcom/octopus/ad/internal/n;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/n;->a(Lcom/octopus/ad/internal/n;)Lcom/octopus/ad/internal/c/d$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/octopus/ad/internal/c/d$a;->a(IZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
