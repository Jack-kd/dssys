.class public final Lcom/smartdigimkt/d5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Lcom/smartdigimkt/d5/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/smartdigimkt/d5/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/d5/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/smartdigimkt/d5/b;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/smartdigimkt/d5/b;->c:Lcom/smartdigimkt/d5/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/d5/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/smartdigimkt/d5/b;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/smartdigimkt/d5/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/smartdigimkt/d5/a;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Lcom/smartdigimkt/d5/a;-><init>(Lcom/smartdigimkt/d5/b;Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/b4/e;->a(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
