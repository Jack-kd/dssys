.class Lcom/beizi/fusion/rf$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/rf;->a(Ljava/lang/String;ZLcom/beizi/fusion/rf$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/rf$f;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/beizi/fusion/rf;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/rf;Lcom/beizi/fusion/rf$f;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/rf$c;->c:Lcom/beizi/fusion/rf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/rf$c;->a:Lcom/beizi/fusion/rf$f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/rf$c;->b:Landroid/graphics/Bitmap;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/rf$c;->a:Lcom/beizi/fusion/rf$f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/rf$c;->b:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/beizi/fusion/rf$f;->a(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
