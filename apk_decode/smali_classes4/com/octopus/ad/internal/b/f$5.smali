.class Lcom/octopus/ad/internal/b/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->a(ZLcom/octopus/ad/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/octopus/ad/internal/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;Lcom/octopus/ad/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$5;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$5;->a:Lcom/octopus/ad/a;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/octopus/ad/internal/b/f$5;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/f$5;->a:Lcom/octopus/ad/a;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-boolean p2, p0, Lcom/octopus/ad/internal/b/f$5;->b:Z

    .line 8
    .line 9
    :cond_0
    invoke-interface {p1, p2}, Lcom/octopus/ad/a;->a(Z)V

    .line 10
    .line 11
    .line 12
    :cond_1
    return-void
.end method
