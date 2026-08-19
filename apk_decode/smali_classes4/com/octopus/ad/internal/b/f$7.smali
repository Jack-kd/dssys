.class Lcom/octopus/ad/internal/b/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$7;->c:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/f$7;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/octopus/ad/internal/b/f$7;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$7;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/octopus/ad/internal/b/f$7;->c:Lcom/octopus/ad/internal/b/f;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/octopus/ad/internal/b/f;->d(Lcom/octopus/ad/internal/b/f;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/octopus/ad/internal/b/f$7;->c:Lcom/octopus/ad/internal/b/f;

    .line 14
    .line 15
    invoke-static {v3}, Lcom/octopus/ad/internal/b/f;->e(Lcom/octopus/ad/internal/b/f;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/octopus/ad/internal/b/f$7;->c:Lcom/octopus/ad/internal/b/f;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/octopus/ad/internal/b/f;->f(Lcom/octopus/ad/internal/b/f;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    new-instance v5, Lcom/octopus/ad/internal/b/f$7$1;

    .line 26
    .line 27
    invoke-direct {v5, p0}, Lcom/octopus/ad/internal/b/f$7$1;-><init>(Lcom/octopus/ad/internal/b/f$7;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/octopus/ad/utils/OctUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/octopus/ad/utils/OctUtil$C;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
