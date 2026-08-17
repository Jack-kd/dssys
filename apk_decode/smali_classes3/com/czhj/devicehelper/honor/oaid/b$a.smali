.class public abstract Lcom/czhj/devicehelper/honor/oaid/b$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/czhj/devicehelper/honor/oaid/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/devicehelper/honor/oaid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/devicehelper/honor/oaid/b$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.hihonor.cloudservice.oaid.IOAIDService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
