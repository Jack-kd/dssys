.class Lcom/octopus/ad/internal/b/f$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/utils/OctUtil$C;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/f$7;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$7$1;->a:Lcom/octopus/ad/internal/b/f$7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$7$1;->a:Lcom/octopus/ad/internal/b/f$7;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/octopus/ad/internal/b/f$7;->c:Lcom/octopus/ad/internal/b/f;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/octopus/ad/internal/b/f$7;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget v0, v0, Lcom/octopus/ad/internal/b/f$7;->b:I

    .line 8
    .line 9
    invoke-static {v1, v2, p1, v0}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;Landroid/content/Context;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method
