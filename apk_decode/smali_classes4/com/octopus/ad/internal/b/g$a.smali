.class Lcom/octopus/ad/internal/b/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/octopus/ad/internal/b/g;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/g$a;->c:Lcom/octopus/ad/internal/b/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/b/g$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/octopus/ad/internal/b/g$a;->b:I

    .line 10
    .line 11
    return-void
.end method
