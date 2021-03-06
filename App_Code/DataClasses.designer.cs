﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="EntityFrameworkTest")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertOrderProduct1(OrderProduct1 instance);
  partial void UpdateOrderProduct1(OrderProduct1 instance);
  partial void DeleteOrderProduct1(OrderProduct1 instance);
  partial void InsertPerson1(Person1 instance);
  partial void UpdatePerson1(Person1 instance);
  partial void DeletePerson1(Person1 instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["EntityFrameworkTestConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<OrderProduct1> OrderProduct1s
	{
		get
		{
			return this.GetTable<OrderProduct1>();
		}
	}
	
	public System.Data.Linq.Table<Person1> Person1s
	{
		get
		{
			return this.GetTable<Person1>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.OrderProduct")]
public partial class OrderProduct1 : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _OrderId;
	
	private int _OrderNumber;
	
	private int _PersonID;
	
	private EntityRef<Person1> _Person1;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnOrderIdChanging(int value);
    partial void OnOrderIdChanged();
    partial void OnOrderNumberChanging(int value);
    partial void OnOrderNumberChanged();
    partial void OnPersonIDChanging(int value);
    partial void OnPersonIDChanged();
    #endregion
	
	public OrderProduct1()
	{
		this._Person1 = default(EntityRef<Person1>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OrderId", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int OrderId
	{
		get
		{
			return this._OrderId;
		}
		set
		{
			if ((this._OrderId != value))
			{
				this.OnOrderIdChanging(value);
				this.SendPropertyChanging();
				this._OrderId = value;
				this.SendPropertyChanged("OrderId");
				this.OnOrderIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OrderNumber", DbType="Int NOT NULL")]
	public int OrderNumber
	{
		get
		{
			return this._OrderNumber;
		}
		set
		{
			if ((this._OrderNumber != value))
			{
				this.OnOrderNumberChanging(value);
				this.SendPropertyChanging();
				this._OrderNumber = value;
				this.SendPropertyChanged("OrderNumber");
				this.OnOrderNumberChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersonID", DbType="Int NOT NULL")]
	public int PersonID
	{
		get
		{
			return this._PersonID;
		}
		set
		{
			if ((this._PersonID != value))
			{
				if (this._Person1.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnPersonIDChanging(value);
				this.SendPropertyChanging();
				this._PersonID = value;
				this.SendPropertyChanged("PersonID");
				this.OnPersonIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Person_OrderProduct1", Storage="_Person1", ThisKey="PersonID", OtherKey="PersonID", IsForeignKey=true)]
	public Person1 Person1
	{
		get
		{
			return this._Person1.Entity;
		}
		set
		{
			Person1 previousValue = this._Person1.Entity;
			if (((previousValue != value) 
						|| (this._Person1.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Person1.Entity = null;
					previousValue.OrderProduct1s.Remove(this);
				}
				this._Person1.Entity = value;
				if ((value != null))
				{
					value.OrderProduct1s.Add(this);
					this._PersonID = value.PersonID;
				}
				else
				{
					this._PersonID = default(int);
				}
				this.SendPropertyChanged("Person1");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Person")]
public partial class Person1 : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _PersonID;
	
	private string _LastName;
	
	private string _FirstName;
	
	private string _Address;
	
	private string _City;
	
	private EntitySet<OrderProduct1> _OrderProduct1s;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnPersonIDChanging(int value);
    partial void OnPersonIDChanged();
    partial void OnLastNameChanging(string value);
    partial void OnLastNameChanged();
    partial void OnFirstNameChanging(string value);
    partial void OnFirstNameChanged();
    partial void OnAddressChanging(string value);
    partial void OnAddressChanged();
    partial void OnCityChanging(string value);
    partial void OnCityChanged();
    #endregion
	
	public Person1()
	{
		this._OrderProduct1s = new EntitySet<OrderProduct1>(new Action<OrderProduct1>(this.attach_OrderProduct1s), new Action<OrderProduct1>(this.detach_OrderProduct1s));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PersonID", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int PersonID
	{
		get
		{
			return this._PersonID;
		}
		set
		{
			if ((this._PersonID != value))
			{
				this.OnPersonIDChanging(value);
				this.SendPropertyChanging();
				this._PersonID = value;
				this.SendPropertyChanged("PersonID");
				this.OnPersonIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LastName", DbType="VarChar(255)")]
	public string LastName
	{
		get
		{
			return this._LastName;
		}
		set
		{
			if ((this._LastName != value))
			{
				this.OnLastNameChanging(value);
				this.SendPropertyChanging();
				this._LastName = value;
				this.SendPropertyChanged("LastName");
				this.OnLastNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FirstName", DbType="VarChar(255)")]
	public string FirstName
	{
		get
		{
			return this._FirstName;
		}
		set
		{
			if ((this._FirstName != value))
			{
				this.OnFirstNameChanging(value);
				this.SendPropertyChanging();
				this._FirstName = value;
				this.SendPropertyChanged("FirstName");
				this.OnFirstNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Address", DbType="VarChar(255)")]
	public string Address
	{
		get
		{
			return this._Address;
		}
		set
		{
			if ((this._Address != value))
			{
				this.OnAddressChanging(value);
				this.SendPropertyChanging();
				this._Address = value;
				this.SendPropertyChanged("Address");
				this.OnAddressChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_City", DbType="VarChar(255)")]
	public string City
	{
		get
		{
			return this._City;
		}
		set
		{
			if ((this._City != value))
			{
				this.OnCityChanging(value);
				this.SendPropertyChanging();
				this._City = value;
				this.SendPropertyChanged("City");
				this.OnCityChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Person_OrderProduct1", Storage="_OrderProduct1s", ThisKey="PersonID", OtherKey="PersonID")]
	public EntitySet<OrderProduct1> OrderProduct1s
	{
		get
		{
			return this._OrderProduct1s;
		}
		set
		{
			this._OrderProduct1s.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_OrderProduct1s(OrderProduct1 entity)
	{
		this.SendPropertyChanging();
		entity.Person1 = this;
	}
	
	private void detach_OrderProduct1s(OrderProduct1 entity)
	{
		this.SendPropertyChanging();
		entity.Person1 = null;
	}
}
#pragma warning restore 1591
