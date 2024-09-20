package org.sid.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.sid.entities.produits_stock;

public class CatalogueDAOImpl implements ICatalogueDAO {
	private Map<Integer, produits_stock> produits = new HashMap<Integer, produits_stock>();	
	@Override
	public void addProduit(produits_stock p) {
		produits.put(p.getCodePdt(), p);		
	}

	@Override
	public List<produits_stock> listsProduits() {
		return new ArrayList<produits_stock>(produits.values());
	}

	@Override
	public produits_stock getProduits(int codePdt) {
		
		return produits.get(codePdt);
	}

	@Override
	public void deleteProduit(int codePdt) {
		produits.remove(codePdt);		
	}

	@Override
	public void updateProduit(produits_stock p) {
		produits.put(p.getCodePdt(), p);
		
	}
	
	public void initialisation() {
		addProduit(new produits_stock(10,20,"ahmed","free",200));	
		addProduit(new produits_stock(20,20,"kae","free",200));
		addProduit(new produits_stock(30,20,"dwa","free",200));
		System.out.println("www.ahmedharrak.com!!!");
	}

}
