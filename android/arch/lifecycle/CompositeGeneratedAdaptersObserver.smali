.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final a:[Landroid/arch/lifecycle/b;


# direct methods
.method constructor <init>([Landroid/arch/lifecycle/b;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroid/arch/lifecycle/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V
    .registers 9

    .line 36
    new-instance v0, Landroid/arch/lifecycle/i;

    invoke-direct {v0}, Landroid/arch/lifecycle/i;-><init>()V

    .line 37
    iget-object v1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroid/arch/lifecycle/b;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_14

    aget-object v5, v1, v4

    .line 38
    invoke-interface {v5, p1, p2, v3, v0}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;ZLandroid/arch/lifecycle/i;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 40
    :cond_14
    iget-object v1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroid/arch/lifecycle/b;

    array-length v2, v1

    :goto_17
    if-ge v3, v2, :cond_22

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 41
    invoke-interface {v4, p1, p2, v5, v0}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;ZLandroid/arch/lifecycle/i;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_22
    return-void
.end method
