.class public final synthetic Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/l3/a;

.field public final synthetic c:Lcom/smartdigimkt/m3/c;

.field public final synthetic d:Lcom/smartdigimkt/v1/u4;

.field public final synthetic e:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/v1/u4;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/a;->b:Lcom/smartdigimkt/l3/a;

    iput-object p2, p0, Le1/a;->c:Lcom/smartdigimkt/m3/c;

    iput-object p3, p0, Le1/a;->d:Lcom/smartdigimkt/v1/u4;

    iput-object p4, p0, Le1/a;->e:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le1/a;->b:Lcom/smartdigimkt/l3/a;

    iget-object v1, p0, Le1/a;->c:Lcom/smartdigimkt/m3/c;

    iget-object v2, p0, Le1/a;->d:Lcom/smartdigimkt/v1/u4;

    iget-object v3, p0, Le1/a;->e:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/smartdigimkt/v1/v4;->a(Lcom/smartdigimkt/l3/a;Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/v1/u4;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
