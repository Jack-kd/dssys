.class Lcom/octopus/ad/internal/b/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/utils/OctUtil$C;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->a(Landroid/content/Context;IZZZLcom/octopus/ad/a/d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/octopus/ad/internal/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$8;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$8;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/octopus/ad/internal/b/f$8;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$8;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$8;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/octopus/ad/internal/b/f$8;->b:I

    .line 6
    .line 7
    invoke-static {v0, v1, p1, v2}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method
