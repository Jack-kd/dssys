.class Lcom/sigmob/sdk/nativead/ab$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/nativead/ab;->a(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/nativead/ab;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/nativead/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/ab$3;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab$3;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/ab;->d(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/nativead/v;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/ab$3;->a:Lcom/sigmob/sdk/nativead/ab;

    invoke-static {p1}, Lcom/sigmob/sdk/nativead/ab;->d(Lcom/sigmob/sdk/nativead/ab;)Lcom/sigmob/sdk/nativead/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/nativead/v;->a()V

    :cond_1
    return p2
.end method
