.class Lcom/beizi/fusion/rf$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/rf$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/beizi/fusion/rf$g;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/rf$g;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/rf$g$a;->b:Lcom/beizi/fusion/rf$g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/rf$g$a;->a:Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/beizi/fusion/rf$g$a;->b:Lcom/beizi/fusion/rf$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/rf$g;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/rf$g$a;->a:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
