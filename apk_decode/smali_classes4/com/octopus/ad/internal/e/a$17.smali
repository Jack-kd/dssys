.class Lcom/octopus/ad/internal/e/a$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$17;->a:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 1
    const/16 p1, 0x64

    .line 2
    .line 3
    if-ne p3, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$17;->a:Lcom/octopus/ad/internal/e/a;

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
