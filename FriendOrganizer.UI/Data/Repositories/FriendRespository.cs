﻿using FriendOrganizer.DataAccess;
using FriendOrganizer.Model;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Linq;

namespace FriendOrganizer.UI.Data.Repositories
{
    public class FriendRespository : IFriendRepository
    {
        private FriendOrganizerDbContext _context;

        public FriendRespository(FriendOrganizerDbContext context)
        {
            _context = context;
        }

        public void Add(Friend friend)
        {
            _context.Friends.Add(friend);
        }

        public async Task<Friend> GetByIdAsync(int friendId)
        {
            return await _context.Friends
        .Include(f => f.PhoneNumbers)
        .SingleAsync(f => f.Id == friendId);
        }

        public bool HasChanges()
        {
            return _context.ChangeTracker.HasChanges();
        }

        public void Remove(Friend model)
        {
            _context.Friends.Remove(model);
        }

        public void RemovePhoneNumber(FriendPhoneNumber model)
        {
            _context.FriendPhoneNumbers.Remove(model);
        }

        public async Task SaveAsync()
        {
            await _context.SaveChangesAsync();
        }
    }

}


