.class Lcom/octopus/ad/internal/b/f$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->a(Landroid/content/Context;IZZZLcom/octopus/ad/a/d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/octopus/ad/internal/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$10;->b:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/internal/b/f$10;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "AppBackground"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$10;->b:Lcom/octopus/ad/internal/b/f;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iget v1, p0, Lcom/octopus/ad/internal/b/f$10;->a:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v2, v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$10;->b:Lcom/octopus/ad/internal/b/f;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/b/f;->j(Lcom/octopus/ad/internal/b/f;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
