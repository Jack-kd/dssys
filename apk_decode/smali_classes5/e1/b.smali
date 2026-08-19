.class public final synthetic Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/l3/a;

.field public final synthetic c:Lcom/smartdigimkt/m3/c;

.field public final synthetic d:Lcom/smartdigimkt/v1/u4;

.field public final synthetic e:Landroid/app/Dialog;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/v1/u4;Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/b;->b:Lcom/smartdigimkt/l3/a;

    iput-object p2, p0, Le1/b;->c:Lcom/smartdigimkt/m3/c;

    iput-object p3, p0, Le1/b;->d:Lcom/smartdigimkt/v1/u4;

    iput-object p4, p0, Le1/b;->e:Landroid/app/Dialog;

    iput-object p5, p0, Le1/b;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le1/b;->b:Lcom/smartdigimkt/l3/a;

    iget-object v1, p0, Le1/b;->c:Lcom/smartdigimkt/m3/c;

    iget-object v2, p0, Le1/b;->d:Lcom/smartdigimkt/v1/u4;

    iget-object v3, p0, Le1/b;->e:Landroid/app/Dialog;

    iget-object v4, p0, Le1/b;->f:Ljava/lang/Runnable;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/smartdigimkt/v1/v4;->a(Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/v1/u4;Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
