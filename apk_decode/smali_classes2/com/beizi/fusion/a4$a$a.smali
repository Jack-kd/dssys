.class Lcom/beizi/fusion/a4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/a4$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/beizi/fusion/a4$a;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/a4$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/a4$a$a;->b:Lcom/beizi/fusion/a4$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/a4$a$a;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/a4$a$a;->b:Lcom/beizi/fusion/a4$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/a4$a;->b:Lcom/beizi/fusion/a4$c;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/a4$a$a;->a:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/beizi/fusion/a4$c;->a(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
